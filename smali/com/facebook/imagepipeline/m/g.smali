.class public Lcom/facebook/imagepipeline/m/g;
.super Ljava/lang/Object;
.source "SimpleImageTranscoderFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/m/c;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/facebook/imagepipeline/m/g;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/d/c;Z)Lcom/facebook/imagepipeline/m/b;
    .locals 1

    .line 22
    new-instance p1, Lcom/facebook/imagepipeline/m/f;

    iget v0, p0, Lcom/facebook/imagepipeline/m/g;->a:I

    invoke-direct {p1, p2, v0}, Lcom/facebook/imagepipeline/m/f;-><init>(ZI)V

    return-object p1
.end method
