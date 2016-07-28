<%@ include file="/WEB-INF/template/include.jsp"%>

<div>
  <form:form modelAttribute="radiologyOrder" cssClass="box">
    <table>
      <tr>
        <td><spring:message code="general.id" /></td>
        <td><spring:bind path="orderId">${status.value}</spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="radiology.imagingProcedure" /></td>
        <td><spring:bind path="concept.name.name">
                    ${status.value}
                </spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="radiology.radiologyOrder.orderReason" /></td>
        <td><spring:bind path="orderReason">
            <c:if test="${not empty status.value}">
              <spring:bind path="${status.expression}.name.name">
                                ${status.value}
                        </spring:bind>
            </c:if>
          </spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="radiology.radiologyOrder.orderReasonNonCoded" /></td>
        <td><spring:bind path="orderReasonNonCoded">${status.value}</spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="radiology.radiologyOrder.clinicalHistory" /></td>
        <td><spring:bind path="clinicalHistory">${status.value}</spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="Order.orderer" /></td>
        <td><spring:bind path="orderer.name">
                    ${status.value}
                </spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="radiology.urgency" /></td>
        <td><spring:bind path="urgency">
            <spring:message code="radiology.order.urgency.${status.value}" text="${status.value}" />
          </spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="radiology.scheduledDate" /></td>
        <td><spring:bind path="effectiveStartDate">
                    ${status.value}
                </spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="radiology.stopDate" /></td>
        <td><spring:bind path="effectiveStopDate">
                    ${status.value}
                </spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="radiology.performedStatus" /></td>
        <td><spring:bind path="study.performedStatus">
            <spring:message code="radiology.${status.value}" text="${status.value}" />
          </spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="general.instructions" /></td>
        <td><spring:bind path="instructions">
                    ${status.value}
                </spring:bind></td>
      </tr>
      <tr>
        <td><spring:message code="general.createdBy" /></td>
        <td><spring:bind path="creator.personName">
                    ${status.value}
                </spring:bind> - <spring:bind path="dateCreated">
                    ${status.value}
                </spring:bind></td>
      </tr>
      <c:if test="${not empty dicomViewerUrl}">
        <tr>
          <td><spring:message code="radiology.studyResults" /></td>
          <td><a href="${dicomViewerUrl}" target="_tab">View Study</a></td>
        </tr>
      </c:if>
    </table>
  </form:form>
</div>