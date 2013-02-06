function zeroPad(n) {
  if (n < 0) throw new Error('n is negative');
  return (n < 10) ? '0' + n : n;
}
 
function convertToGDataDate(/*Date*/ date) {
  return date.getFullYear() + '-' +
         zeroPad(date.getMonth() + 1) + '-' +
         zeroPad(date.getDate());
}
 
function getEvents(startDate, endDate, callBack, max){
    var feedUrl = "//www.google.com/calendar/feeds/9fgl6cqtjnj65u98dfco3mb18c%40group.calendar.google.com/public/basic";

    var getParams = '?start-min=' + convertToGDataDate(startDate) +
                    '&start-max=' + convertToGDataDate(endDate) +
                    '&alt=json-in-script' +
                    '&orderby=starttime' +
                    '&singleevents=true' +
                    '&callback=' + callBack +
                    '&hl=en' +
                    '&max-results=' + max;
    if (callBack == "renderFuture") {
        getParams += '&sortorder=ascending';
    } else {
        getParams += '&sortorder=descending';
    }
    feedUrl += getParams;
    var scriptTag = document.createElement('script');
    scriptTag.src = feedUrl;
    document.body.appendChild(scriptTag);
}

function listEvents(root, divId) {
  var feed = root.feed,
      events = document.getElementById(divId);
 
  if (events.childNodes.length > 0) {
    events.removeChild(events.childNodes[0]);
  }

  if (typeof feed.entry == 'undefined'){
    var p = document.createElement('p');
    p.appendChild(document.createTextNode("No events, "));
    blogLink = document.createElement('a');
    blogLink.setAttribute('href', "http://seleniumhq.wordpress.com/");
    blogLink.appendChild(document.createTextNode("stay tuned!"));
    p.appendChild(blogLink);
    events.appendChild(p);
    return;
  }
 
  // create a new unordered list
  var ul = document.createElement('ul');
 
  // loop through each event in the feed
  var i,
      l = feed.entry.length;
  for (i = 0; i < l; i++) {
    var entry = feed.entry[i],
        title = entry.title.$t,
        c = entry.content.$t,
        start = c.substring(c.indexOf("When: ") + 6, c.indexOf("<br />")); 

    var link = "";
    if (~c.indexOf("Where: ")) {
      link = c.substring(c.indexOf("Where: ") + 7, c.lastIndexOf("<br />"));
    }
 
    var dateString = start;
    var li = document.createElement('li');
 
    // if we have a link to the event, create an 'a' element
    strong = document.createElement('strong');
    strong.appendChild(document.createTextNode(title));
    if (link !== "") {
      entryLink = document.createElement('a');
      entryLink.setAttribute('href', link);
      entryLink.appendChild(strong);
      li.appendChild(entryLink);
    } else {
      li.appendChild(strong);
    }       
    li.appendChild(document.createElement('br'));
    li.appendChild(document.createTextNode(dateString));
 
    // append the list item onto the unordered list
    ul.appendChild(li);
  }
  events.appendChild(ul);
}

function renderFuture(events){
    listEvents(events, "future-events");
}
function renderPast(events){
    listEvents(events, "past-events");
}


var today = new Date(),
    pastStartDate = new Date(today.getTime() - (12 * 30 * 24 * 60 * 60 * 1000)),
    futureEndDate = new Date(today.getTime() + (6 * 30 * 24 * 60 * 60 * 1000));

getEvents(today, futureEndDate, "renderFuture", 10);
getEvents(pastStartDate, today, "renderPast", 4);
