<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="contentpanel">
		<div class="row row-stat">
		    <div class="col-md-4">
            	<div class="panel panel-success-alt noborder">
                	<div class="panel-heading noborder">
                        <div class="panel-btns">
                            <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                        </div><!-- panel-btns -->
                        <div class="panel-icon"><i class="fa fa-map-marker"></i></div>
                        <div class="media-body">
                            <h5 class="md-title nomargin">Quant. de estados cadastrados</h5>
                            <h1 class="mt5"> 0 </h1>
                        </div><!-- media-body -->
                        <!--
						<hr>
                        <div class="clearfix mt20">
                            <div class="pull-left">
                                <h5 class="md-title nomargin">Yesterday</h5>
                                <h4 class="nomargin">$29,009.17</h4>
                            </div>
                            <div class="pull-right">
                                <h5 class="md-title nomargin">This Week</h5>
                                <h4 class="nomargin">$99,103.67</h4>
                            </div>
                        </div>
                        -->
                   </div><!-- panel-body -->
               </div><!-- panel -->
            </div><!-- col-md-4 -->
            <div class="col-md-4">
				<div class="panel panel-primary noborder">
					<div class="panel-heading noborder">
						<div class="panel-btns">
							<a href="#" class="panel-close tooltips" data-toggle="tooltip"
								title="Close Panel"><i class="fa fa-times"></i></a>
						</div>	<!-- panel-btns -->
						<div class="panel-icon">
							<i class="fa fa-flag"></i>
						</div>
						<div class="media-body">
							<h5 class="md-title nomargin">Quant. de cidades cadastradas</h5>
							<h1 class="mt5">0</h1>
						</div>
						<!-- media-body
						<hr>
						<div class="clearfix mt20">
							<div class="pull-left">
								<h5 class="md-title nomargin">Ontem</h5>
								<h4 class="nomargin">1.003</h4>
							</div>
							<div class="pull-right">
								<h5 class="md-title nomargin">Essa Semana</h5>
								<h4 class="nomargin">5.678</h4>
							</div>
						</div>
						 -->
					</div><!-- panel-body -->
				</div><!-- panel -->
			</div><!-- col-md-4 -->

			<div class="col-md-4">
				<div class="panel panel-dark noborder">
					<div class="panel-heading noborder">
						<div class="panel-btns">
							<a href="#" class="panel-close tooltips" data-toggle="tooltip"
								data-placement="left" title="Close Panel"><i
								class="fa fa-times"></i></a>
						</div>
						<!-- panel-btns -->
						<div class="panel-icon">
							<i class="fa fa-pencil"></i>
						</div>
						<div class="media-body">
							<h5 class="md-title nomargin">Clientes</h5>
							<h1 class="mt5">153</h1>
						</div>
						<!-- media-body -->
						<hr>
						<div class="clearfix mt20">
							<div class="pull-left">
								<h5 class="md-title nomargin">Ontem</h5>
								<h4 class="nomargin">3</h4>
							</div>
							<div class="pull-right">
								<h5 class="md-title nomargin">Essa Semana</h5>
								<h4 class="nomargin">15</h4>
							</div>
						</div>

					</div>
					<!-- panel-body -->
				</div>
				<!-- panel -->
			</div>
			<!-- col-md-4 -->
		</div>
		<!-- row -->

		<div class="row">
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-body padding15">
						<h5 class="md-title mt0 mb10">Site Statistics</h5>
						<div id="basicFlotLegend" class="flotLegend"></div>
						<div id="basicflot" class="flotChart"></div>
					</div>
					<!-- panel-body -->
					<div class="panel-footer">
						<div class="tinystat pull-left">
							<div id="sparkline" class="chart mt5"></div>
							<div class="datainfo">
								<span class="text-muted">Average</span>
								<h4>$9,201</h4>
							</div>
						</div>
						<!-- tinystat -->
						<div class="tinystat pull-right">
							<div id="sparkline2" class="chart mt5"></div>
							<div class="datainfo">
								<span class="text-muted">Total</span>
								<h4>$8,201</h4>
							</div>
						</div>
						<!-- tinystat -->
					</div>
					<!-- panel-footer -->
				</div>
				<!-- panel -->
			</div>

			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-body padding15">
						<h5 class="md-title mt0 mb10">Site Visitors</h5>
						<div id="basicFlotLegend2" class="flotLegend"></div>
						<div id="basicflot2" class="flotChart"></div>
					</div>
					<!-- panel-body -->
					<div class="panel-footer">
						<div class="tinystat pull-left">
							<div id="sparkline3" class="chart mt5"></div>
							<div class="datainfo">
								<span class="text-muted">Average</span>
								<h4>52,201</h4>
							</div>
						</div>
						<!-- tinystat -->
						<div class="tinystat pull-right">
							<div id="sparkline4" class="chart mt5"></div>
							<div class="datainfo">
								<span class="text-muted">Total</span>
								<h4>11,201</h4>
							</div>
						</div>
						<!-- tinystat -->
					</div>
					<!-- panel-footer -->
				</div>
				<!-- panel -->
			</div>

			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-body padding15">
						<h5 class="md-title mt0 mb10">Site Impressions</h5>
						<div id="basicFlotLegend3" class="flotLegend"></div>
						<div id="basicflot3" class="flotChart"></div>
					</div>	<!-- panel-body -->
					<div class="panel-footer">
						<div class="tinystat pull-left">
							<div id="sparkline5" class="chart mt5"></div>
							<div class="datainfo">
								<span class="text-muted">Average</span>
								<h4>37,101</h4>
							</div>
						</div>	<!-- tinystat -->
						<div class="tinystat pull-right">
							<div id="sparkline6" class="chart mt5"></div>
							<div class="datainfo">
								<span class="text-muted">Total</span>
								<h4>18,899</h4>
							</div>
						</div>	<!-- tinystat -->
					</div><!-- panel-footer -->
				</div><!-- panel -->
			</div>
		</div>	<!-- row -->
	</div>	<!-- contentpanel -->
