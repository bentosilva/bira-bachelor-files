package org.usp.grafos;

import java.util.*;
import org.jgrapht.graph.*;
import org.jgrapht.traverse.*;
import org.jgrapht.alg.*;

public class ClusteringCoefficient {

	private double averageClusteringCoefficient;
	private double diameter;
	private ArrayList<Double> clusteringCoefficient;
	
	/*
	 * Construtor
	 * 
	 * Aceita um grafo e calcula o coeficiente de clusteriza��o m�dio, 
	 * bem como o di�metro do Grafo
	 * 
	 * */
	
	ClusteringCoefficient(SimpleGraph<String, DefaultEdge> graph){
				
		
		FloydWarshallShortestPaths<String, DefaultEdge> fwsp = new FloydWarshallShortestPaths<String, DefaultEdge>(graph);
		
		
		// C�lculo do di�metro do grafo
		this.setDiameter(fwsp.getDiameter());
		
		// C�lculo do coeficiente de clusteriza��o de cada v�rtice

		
		// Iterator para percorrer o grafo com busca em profundidade
		DepthFirstIterator<String, DefaultEdge> dfit = new DepthFirstIterator<String, DefaultEdge>(graph);
		
		
		// Iterator para percorrer lista de vizinhos de um v�rtice
		NeighborIndex<String, DefaultEdge> ni = new NeighborIndex<String, DefaultEdge>(graph);

		
		// Inicializa��o da lista que mant�m o coeficiente de cada v�rtice
		this.clusteringCoefficient = new ArrayList<Double>();
		
		
		// Itera��o sobre cada v�rtice
		while(dfit.hasNext()){
					
			// Inicializa��es
			String vertex = dfit.next();
			
        	int ki = graph.inDegreeOf(vertex) + graph.outDegreeOf(vertex);	
        	
        	int eij = 0;
         	
        	
        	// Obt�m lista de vizinhos do v�rtice
        	List<String> neighbors = ni.neighborListOf(vertex);
        	
        	
        	// Explorando a vizinhan�a e contando os links entre vizinhos
			for(int i = 0; i < neighbors.size(); i++){
				for(int j = i + 1 ; j < neighbors.size(); j++){
					
					if(graph.containsEdge(neighbors.get(i), neighbors.get(j))){ eij++;}	
				}	
			}
			
			// C�lculo do coeficiente de clusteriza��o do v�rtice
			double cc = (double) 2 * eij / (ki = ki - 1);
			
			// Atribui��o do coeficiente na lista de coeficientes
			this.clusteringCoefficient.add(cc);
			
		}//end while
		
		
		// Obtendo o coeficiente m�dio de clusteriza��o do grafo
		
		double sum = 0.0;
		
		for(Double cc : this.clusteringCoefficient){ sum += cc; }
		
		this.setAverageClusteringCoefficient(sum / this.clusteringCoefficient.size());
		
	}//end Constructor

// Setters and Getters
	
public void setAverageClusteringCoefficient(double averageClusteringCoefficient) {
	this.averageClusteringCoefficient = averageClusteringCoefficient;
}

public double getAverageClusteringCoefficient() {
	return averageClusteringCoefficient;
}

public void setDiameter(double diameter) {
	this.diameter = diameter;
}

public double getDiameter() {
	return diameter;
}
        		
}//end ClusteringCoefficient
        	
        




