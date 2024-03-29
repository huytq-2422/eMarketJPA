<%--
  Created by IntelliJ IDEA.
  User: Tran
  Date: 11/20/2019
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<div id="container" class="mb-5">
    <div id="prod_wrapper">
        <div id="" class="mb-3">
            <%--@elvariable id="newProducts" type="java.util.List"--%>
            <%--      <jsp:useBean id="currentProduct" scope="request" type="main.java.hust.entity.ProductEntity"/>--%>
            <%--      <c:set var="product" scope="request" value="${currentProduct}"/>--%>
            <%--            <c:forEach var="product" items="${newProducts}">--%>
            <c:set var="product" value="${newProducts.get(0)}"/>
            <div class="row d-flex justify-content-center">
                <div class="col-5" style="text-align: center; position: relative">
                    <img class="mx-auto"
                         style="display: inline-block"
                         src="${initParam.imgProductPath}${product.getImage()}"
                         alt=""
                         height="200px"
                    />
                </div>

                <div class="col-7">
                    <h5>${product.getName()}</h5>
                    <p>${product.getDescription()}</p>
                    <p style="text-align: left">
                        <a href="#" class="button">More Info</a>
                        <a href="#" class="button">Buy now</a>
                    </p>
                </div>
            </div>
            <%--            </c:forEach>--%>
        </div>
        <div id="sdfsd" class="d-flex justify-content-center mb-5">
            <c:set var="countProduct" scope="request" value="${1}"/>
            <c:forEach var="product" items="${newProducts}" varStatus="loop">
                <a href="products?index=${loop.index}" style="text-decoration: none; width: 200px">
                    <div class="d-flex flex-column mx-2 justify-content-center">
                        <img src="${initParam.imgProductPath}${product.getImage()}" alt="" width="50" height="50">
                        <div>${product.getName()} </div>
                            ${product.getPrice()}
                    </div>
                </a>
            </c:forEach>
        </div>
        <c:set var="countProduct" scope="request" value="${countProduct + 1}"/>
        <div class="mt-5">
            <div class="one-fourth">
                <div class="heading_bg">
                    <h2>Mac</h2>
                </div>
                <img src="img/demo/4.jpg" width="100" height="100" alt=""/>
            </div>
            <div class="one-fourth">
                <div class="heading_bg">
                    <h2>iPac</h2>
                </div>
                <img src="img/demo/3.jpg" width="100" height="100"/>
            </div>
            <div class="one-fourth">
                <div class="heading_bg">
                    <h2>iPhone</h2>
                </div>
                <img src="img/demo/1.jpg" width="100" height="100"/>
            </div>
            <div class="one-fourth">
                <div class="heading_bg">
                    <h2>Accessories</h2>
                </div>
                <img src="img/demo/1.jpg" width="100" height="100"/>
            </div>
        </div>
    </div>
</div>