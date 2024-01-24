variable namespace {
    description = "please give a name for your namespace"
    type = string
    default = ""
}

variable podlimit {
    description = "please set limit for number of pods"
    type = string
    default = ""
}

variable pod_max_cpu_limit {
    description = "please set the pod size"
    type = string
    default = ""
}

variable pod_max_mem_limit {
    description = "please set the memory size"
    type = string
    default = ""
}

variable cont_max_cpu_limit {
    description = "please set the container cpu size"
    type = string
    default = ""
}

variable cont_max_mem_limit {
    description = "please set the container memory size"
    type = string
    default = ""
}

variable annotation {
    description = "please provide annotations"
    type = map 
    default = {}
}

variable labels {
    description = "please provide labels"
    type = map 
    default = {}
}