.class public Lorg/dom4j/tree/ElementQNameIterator;
.super Lorg/dom4j/tree/FilterIterator;
.source "ElementQNameIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/dom4j/tree/FilterIterator<",
        "Lorg/dom4j/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private qName:Lorg/dom4j/QName;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/dom4j/QName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/dom4j/Node;",
            ">;",
            "Lorg/dom4j/QName;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    .line 33
    iput-object p2, p0, Lorg/dom4j/tree/ElementQNameIterator;->qName:Lorg/dom4j/QName;

    return-void
.end method


# virtual methods
.method protected bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ElementQNameIterator;->matches(Lorg/dom4j/Node;)Z

    move-result p1

    return p1
.end method

.method protected matches(Lorg/dom4j/Node;)Z
    .locals 1

    .line 46
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lorg/dom4j/Element;

    .line 49
    iget-object v0, p0, Lorg/dom4j/tree/ElementQNameIterator;->qName:Lorg/dom4j/QName;

    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
