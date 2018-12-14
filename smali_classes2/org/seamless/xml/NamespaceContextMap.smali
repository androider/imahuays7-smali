.class public abstract Lorg/seamless/xml/NamespaceContextMap;
.super Ljava/util/HashMap;
.source "NamespaceContextMap.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljavax/xml/namespace/NamespaceContext;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getDefaultNamespaceURI()Ljava/lang/String;
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No prefix provided!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, ""

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lorg/seamless/xml/NamespaceContextMap;->getDefaultNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lorg/seamless/xml/NamespaceContextMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0, p1}, Lorg/seamless/xml/NamespaceContextMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
