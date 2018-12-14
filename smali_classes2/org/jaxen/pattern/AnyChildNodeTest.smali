.class public Lorg/jaxen/pattern/AnyChildNodeTest;
.super Lorg/jaxen/pattern/NodeTest;
.source "AnyChildNodeTest.java"


# static fields
.field private static instance:Lorg/jaxen/pattern/AnyChildNodeTest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lorg/jaxen/pattern/AnyChildNodeTest;

    invoke-direct {v0}, Lorg/jaxen/pattern/AnyChildNodeTest;-><init>()V

    sput-object v0, Lorg/jaxen/pattern/AnyChildNodeTest;->instance:Lorg/jaxen/pattern/AnyChildNodeTest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/jaxen/pattern/NodeTest;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jaxen/pattern/AnyChildNodeTest;
    .locals 1

    .line 63
    sget-object v0, Lorg/jaxen/pattern/AnyChildNodeTest;->instance:Lorg/jaxen/pattern/AnyChildNodeTest;

    return-object v0
.end method


# virtual methods
.method public getMatchType()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()D
    .locals 2

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, "*"

    return-object v0
.end method

.method public matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z
    .locals 1

    .line 74
    invoke-virtual {p2}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/jaxen/Navigator;->getNodeType(Ljava/lang/Object;)S

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method
