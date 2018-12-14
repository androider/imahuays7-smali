.class public interface abstract Lcom/google/zxing/f;
.super Ljava/lang/Object;
.source "Reader.java"


# virtual methods
.method public abstract a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/b;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public abstract a()V
.end method
