var proxy = require('../lib/proxyLinks');

describe('Test the proxy links function', function () {
    var proxyUrl = 'http://www.baidu.com/';
    
    it('should can replace all A tag links with http start', function (done) {
        var content = '<a href="http://www.163.com">'; 
        var proxyedContent = proxy.proxyLinks(content, proxyUrl);  
        expect(proxyedContent).toContain(proxyUrl+"?url=http://www.163.com");
        done(); 
    }); 
});
