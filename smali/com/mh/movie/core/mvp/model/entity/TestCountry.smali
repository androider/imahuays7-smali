.class public Lcom/mh/movie/core/mvp/model/entity/TestCountry;
.super Ljava/lang/Object;
.source "TestCountry.java"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    new-instance p0, Ljava/io/File;

    const-string v0, "/Users/jacob/Desktop/pack_info.txt"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    .line 73
    new-array p0, p0, [B

    .line 74
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    .line 75
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 76
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p0, "DtXZcHh9XJ5SfPAe"

    .line 77
    invoke-static {v0, p0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, v0

    .line 81
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    new-instance p0, Lcom/google/gson/e;

    invoke-direct {p0}, Lcom/google/gson/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getA()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/TestCountry;->A:Ljava/util/List;

    return-object v0
.end method

.method public setA(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/TestCountry;->A:Ljava/util/List;

    return-void
.end method
