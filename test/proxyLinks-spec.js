var proxy = require('../lib/proxyLinks');

describe('Test the proxy links function', function () {
    var proxyUrl = 'http://www.baidu.com/';
    
    /*it('should can replace all A tag links with http start', function (done) {
        var content = '<a href="http://www.163.com" ></a> <a href="http://www.sina.com"></a>'; 
        var proxyedContent = proxy.proxyLinks(content, proxyUrl);  
        expect(proxyedContent).toContain(proxyUrl + "?url=http://www.163.com");
        expect(proxyedContent).toContain(proxyUrl + "?url=http://www.sina.com");
        done(); 
    }); 

    it('should can replace all absolute links with proxy', function (done) {
        var content = '<a href="/s.html" ></a> <a href="http://www.sina.com"></a>';
        var proxyedContent = proxy.proxyLinks(content, proxyUrl);
        expect(proxyedContent).toContain(proxyUrl + "?url=http://www.baidu.com/s.html");
        done();
    });*/

    it('should can replace all image url with proxy', function (done) {
        var content = 'just for test <img src="http://bcs.baidu.com/weigou-prodb-image/6d5b7d0fd8695f9f3d64a06e8ffa7337_0_600x600.jpg" alt="test"/>  <img src="http://t10.baidu.com/it/u=3064510521,2747029512&fm=58" alt="huawei" />';
        var proxyedContent = proxy.proxyLinks(content, proxyUrl);
        expect(proxyedContent).toContain(proxyUrl + '?url=http://bcs.baidu.com/weigou-prodb-image/6d5b7d0fd8695f9f3d64a06e8ffa7337_0_600x600.jpg');
        expect(proxyedContent).toContain(proxyUrl + '?url=http://t10.baidu.com/it/u=3064510521,2747029512&fm=58');
        done();

    });
});
