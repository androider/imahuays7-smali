.class public Lorg/jaxen/expr/iter/IterableChildAxis;
.super Lorg/jaxen/expr/iter/IterableAxis;
.source "IterableChildAxis.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/jaxen/expr/iter/IterableAxis;-><init>(I)V

    return-void
.end method


# virtual methods
.method public iterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .line 75
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/jaxen/Navigator;->getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public namedAccessIterator(Ljava/lang/Object;Lorg/jaxen/ContextSupport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .line 97
    invoke-virtual {p2}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object p2

    check-cast p2, Lorg/jaxen/NamedAccessNavigator;

    .line 98
    invoke-interface {p2, p1, p3, p4, p5}, Lorg/jaxen/NamedAccessNavigator;->getChildAxisIterator(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public supportsNamedAccess(Lorg/jaxen/ContextSupport;)Z
    .locals 0

    .line 108
    invoke-virtual {p1}, Lorg/jaxen/ContextSupport;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object p1

    instance-of p1, p1, Lorg/jaxen/NamedAccessNavigator;

    return p1
.end method
