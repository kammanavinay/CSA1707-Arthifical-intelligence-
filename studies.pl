studies(charlie,csc135).
studies(olivia,csc135).
studies(jack,csc131).
studies(arthur,csc134).

teachers(kirke,csc135).
teachers(collions,csc131).
teachers(collins,csc171).
teachers(juniper,csc134).

professor(X,Y):-teachers(X,C),studies(Y,C).