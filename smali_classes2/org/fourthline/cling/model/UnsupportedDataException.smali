.class public Lorg/fourthline/cling/model/UnsupportedDataException;
.super Ljava/lang/RuntimeException;
.source "UnsupportedDataException.java"


# static fields
.field private static final serialVersionUID:J = 0x92f2b759d9080dbL


# instance fields
.field protected data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object p3, p0, Lorg/fourthline/cling/model/UnsupportedDataException;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/fourthline/cling/model/UnsupportedDataException;->data:Ljava/lang/Object;

    return-object v0
.end method
