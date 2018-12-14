.class public abstract Lorg/seamless/xml/DOMParser$NodeVisitor;
.super Ljava/lang/Object;
.source "DOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/xml/DOMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NodeVisitor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private nodeType:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 566
    const-class v0, Lorg/seamless/xml/DOMParser;

    return-void
.end method

.method protected constructor <init>(S)V
    .locals 0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-short p1, p0, Lorg/seamless/xml/DOMParser$NodeVisitor;->nodeType:S

    return-void
.end method

.method static synthetic access$000(Lorg/seamless/xml/DOMParser$NodeVisitor;)S
    .locals 0

    .line 566
    iget-short p0, p0, Lorg/seamless/xml/DOMParser$NodeVisitor;->nodeType:S

    return p0
.end method


# virtual methods
.method public isHalted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract visit(Lorg/w3c/dom/Node;)V
.end method
