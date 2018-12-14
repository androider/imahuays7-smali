.class public Lorg/jaxen/SimpleFunctionContext;
.super Ljava/lang/Object;
.source "SimpleFunctionContext.java"

# interfaces
.implements Lorg/jaxen/FunctionContext;


# instance fields
.field private functions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaxen/SimpleFunctionContext;->functions:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jaxen/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnresolvableException;
        }
    .end annotation

    .line 121
    new-instance p2, Lorg/jaxen/QualifiedName;

    invoke-direct {p2, p1, p3}, Lorg/jaxen/QualifiedName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lorg/jaxen/SimpleFunctionContext;->functions:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lorg/jaxen/SimpleFunctionContext;->functions:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaxen/Function;

    return-object p1

    .line 127
    :cond_0
    new-instance p1, Lorg/jaxen/UnresolvableException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No Such Function "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/jaxen/QualifiedName;->getClarkForm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerFunction(Ljava/lang/String;Ljava/lang/String;Lorg/jaxen/Function;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/jaxen/SimpleFunctionContext;->functions:Ljava/util/HashMap;

    new-instance v1, Lorg/jaxen/QualifiedName;

    invoke-direct {v1, p1, p2}, Lorg/jaxen/QualifiedName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
