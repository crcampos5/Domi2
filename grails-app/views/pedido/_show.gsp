<div id="show-pedido" class="content scaffold-show" role="main">
	<h1>Mostrar Pedido</h1>

	<div class="property-list pedido">

		<g:if test="${pedidoInstance?.code}">
			<li class="fieldcontain">
			<span id="code-label"class="property-label">Codigo</span> 
			<span class="property-value"aria-labelledby="code-label">
			<g:fieldValue bean="${pedidoInstance}" field="code" /></span>
			</li>
		</g:if>

		<g:if test="${pedidoInstance?.date}">
			<li class="fieldcontain"><span id="date-label"
				class="property-label"><g:message code="pedido.date.label"
						default="Date" /></span> <span class="property-value"
				aria-labelledby="date-label"><g:formatDate
						date="${pedidoInstance?.date}" /></span></li>
		</g:if>

		<g:if test="${pedidoInstance?.productos}">
			<li class="fieldcontain"><span id="productos-label"
				class="property-label"><g:message
						code="pedido.productos.label" default="Productos" /></span> <g:each
					in="${pedidoInstance.productos}" var="p">
					<span class="property-value" aria-labelledby="productos-label"><g:link
							controller="product" action="show" id="${p.id}">
							${p.productos.name}
						</g:link></span>
					${p?.cantidad}
				</g:each></li>
		</g:if>

		<g:if test="${pedidoInstance?.total}">
			<li class="fieldcontain"><span id="total-label"
				class="property-label"><g:message code="pedido.total.label"
						default="Total" /></span> <span class="property-value"
				aria-labelledby="total-label"><g:fieldValue
						bean="${pedidoInstance}" field="total" /></span></li>
		</g:if>

		<g:if test="${pedidoInstance?.usuario}">
			<li class="fieldcontain"><span id="usuario-label"
				class="property-label"><g:message code="pedido.usuario.label"
						default="Usuario" /></span> <span class="property-value"
				aria-labelledby="usuario-label"><g:link controller="user"
						action="show" id="${pedidoInstance?.usuario?.id}">
						${pedidoInstance?.usuario?.encodeAsHTML()}
					</g:link></span></li>
		</g:if>

	</div>
</div>