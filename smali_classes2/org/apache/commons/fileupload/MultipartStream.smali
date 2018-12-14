.class public Lorg/apache/commons/fileupload/MultipartStream;
.super Ljava/lang/Object;
.source "MultipartStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;,
        Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
    }
.end annotation


# static fields
.field protected static final a:[B

.field protected static final b:[B

.field protected static final c:[B

.field protected static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 190
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/fileupload/MultipartStream;->a:[B

    const/4 v1, 0x2

    .line 196
    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lorg/apache/commons/fileupload/MultipartStream;->b:[B

    .line 202
    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/fileupload/MultipartStream;->c:[B

    .line 207
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0xdt
        0xat
        0x2dt
        0x2dt
    .end array-data
.end method
