package org.usp.grafos;

import java.util.*;
import org.jgrapht.graph.*;
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
	
	ClusteringCoefficient(Pseudograph<String, DefaultEdge> graph){
				
		// C�lculo de caminhos m�nimos de todos para todos os v�rtices com Floyd-Warshall
		FloydWarshall<String, DefaultEdge> fwsp = new FloydWarshall<String, DefaultEdge>(graph);
		
		
		// C�lculo do di�metro do grafo
		this.setDiameter(fwsp.getDiameter());
		
		// C�lculo do coeficiente de clusteriza��o de cada v�rtice
		
		// Iterator para percorrer lista de vizinhos de um v�rtice
		NeighborIndex<String, DefaultEdge> ni = new NeighborIndex<String, DefaultEdge>(graph);
		
		// Inicializa��o da lista que mant�m o coeficiente de cada v�rtice
		this.clusteringCoefficient = new ArrayList<Double>();
		
		// Itera��o sobre cada v�rtice
		for(String vertex : graph.vertexSet()){
			        	
        	// Obt�m lista de vizinhos do v�rtice
        	Set<String> neighbors = ni.neighborsOf(vertex);
                	
        	int ki = neighbors.size();

    		double cc;
    		
        	if(ki > 1){
        	
        		int eij = 0;

        	
        		//Montando subgrafo de vizinha�a do v�rtice
        		UndirectedSubgraph<String, DefaultEdge> neighborsSubGraph = new UndirectedSubgraph<String,DefaultEdge>(graph,neighbors,null);

			
        		// Encontrando lista de arestas do subgrafo composto por vizinho
        		Set<DefaultEdge> neighborsLinks = neighborsSubGraph.edgeSet();
			
        		// Determinando quantidade de links
        		eij = neighborsLinks.size() / 2;

			
        		// Calculando o coeficiente de clusteriza��o para o v�rtice
        		cc = 2 * (double) eij / (ki  * (ki - 1));
        	}
        	
			else cc = 0;
        	
			// Atribui��o do coeficiente na lista de coeficientes
			this.clusteringCoefficient.add(cc);
			
		}//end while
		
		
		// Obtendo o coeficiente m�dio de clusteriza��o do grafo, ponderando somente os v�rtice conectados		
		double sum = 0.0;
		
		for(Double cc : this.clusteringCoefficient){ sum += cc;}
		
		
		// C�lculo do coeficiente de clusteriza��o m�dio do grafo
		this.setAverageClusteringCoefficient(sum / (double) this.clusteringCoefficient.size());
		
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

	public ArrayList<Double> getCoefficients(){
		return this.clusteringCoefficient;
	}


}//end ClusteringCoefficient


        	
        




