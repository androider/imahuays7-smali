.class public Lcom/facebook/imagepipeline/decoder/DecodeException;
.super Ljava/lang/RuntimeException;
.source "DecodeException.java"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/g/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/imagepipeline/g/e;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/DecodeException;->a:Lcom/facebook/imagepipeline/g/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/imagepipeline/g/e;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iput-object p3, p0, Lcom/facebook/imagepipeline/decoder/DecodeException;->a:Lcom/facebook/imagepipeline/g/e;

    return-void
.end method


# virtual methods
.method public getEncodedImage()Lcom/facebook/imagepipeline/g/e;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DecodeException;->a:Lcom/facebook/imagepipeline/g/e;

    return-object v0
.end method
