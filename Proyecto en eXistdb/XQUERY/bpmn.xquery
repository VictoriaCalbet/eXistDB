xquery version "3.1";

(: Declaración de los namespaces :)
declare namespace xsi = "http://www.w3.org/2001/XMLSchema-instance";
declare namespace bpmn = "http://www.omg.org/spec/BPMN/20100524/MODEL";
declare namespace di = "http://www.omg.org/spec/DD/20100524/DI";
declare namespace bpmndi = "http://www.omg.org/spec/BPMN/20100524/DI";
declare namespace dc = "http://www.omg.org/spec/DD/20100524/DC";
declare namespace h = "http://www.w3.org/2005/xpath-functions";

(:(: Muestra el xml que se va a usar :):)
(: let $e := doc('/db/apps/CBD/BPMN/bpmn.xml')/* :)
(:    return $e:)
    
(: ----------------------------------------- Nos devuelve los nombres de los lanes por orden alfabetico -------------------------------------  :)
for $k in doc("/db/apps/CBD/BPMN/bpmn.xml")//element(bpmn:lane)
    let $nombre := $k/@name
    order by $nombre
   return 
        <nombre>{$nombre}</nombre> 
 
(: ----------------------------------------- Filtrar por tarea con un id específico ----------------------------------------- :)
(: for $t in doc("/db/apps/CBD/BPMN/bpmn.xml")//element(bpmn:task):)
(:    let $nombre := $t/[@name]:)
(:    where $t/@id="Task_0nrqdbd":)
(:    order by $nombre:)
(:    return :)
(:        <nombre>{$nombre}</nombre>:)

 
(: (: Devuelve aquellas aristas con una x e y especifica :):)
(: for $b in doc("/db/apps/CBD/BPMN/bpmn.xml")//element(bpmndi:BPMNEdge):)
(: where some $a in $b satisfies (($a//element(di:waypoint)/@x < 960) and ($a//element(di:waypoint)/@y > 409)) (: Se puede ir cambiando el rango de x e y:):)
(: return data($b/@bpmnElement) :)
 
 
(: (: Devuelve aquellas tareas una x e y especifica :):)
(: for $b in doc("/db/apps/CBD/BPMN/bpmn.xml")//element(bpmndi:BPMNShape):)
(: let $f := doc("/db/apps/CBD/BPMN/bpmn.xml")//element(bpmn:task):)
(: where some $a in $b satisfies (($a//element(dc:Bounds)/@x < 410) and ($a//element(dc:Bounds)/@y > 100)) (: se puede ir cambiando el rango de x e y:):)
(: let $e := data($b/@bpmnElement) (: devuelve el atributo bpmnElement:):)
(: where starts-with($e,"Task_") (: si en $e algun elemento guardado que empiece con "task_":):)
(:    return $e (: devuelve aquellos que dependen de la comparacion:):)
(:    :)
 
 
(: (: Devuelve las tareas  :):)
(:for $i in distinct-values(doc("/db/apps/CBD/BPMN/bpmn.xml")//(element(bpmn:process) union element(bpmn:task)) /@name) (: unimos los nodos del proceso con las tareas y filtramos por nombre:):)
(:order by $i (: ordenamos por nombre :):)
(:return data($i):)


(:(: Devuelve la tarea asociada a ese id :):)
(:    for $b in doc("/db/apps/CBD/BPMN/bpmn.xml")//element(bpmn:task):)
(:    where every $a in $b satisfies ($a/@id="Task_0nrqdbd"):)
(:    return data($b/@name):)