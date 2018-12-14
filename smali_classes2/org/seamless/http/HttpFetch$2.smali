.class final Lorg/seamless/http/HttpFetch$2;
.super Ljava/lang/Object;
.source "HttpFetch.java"

# interfaces
.implements Lorg/seamless/http/HttpFetch$RepresentationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/http/HttpFetch;->fetchString(Ljava/net/URL;II)Lorg/seamless/http/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/seamless/http/HttpFetch$RepresentationFactory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/seamless/http/Representation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/seamless/http/Representation;

    invoke-static {p2}, Lorg/seamless/util/io/IO;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/seamless/http/Representation;-><init>(Ljava/net/URLConnection;Ljava/lang/Object;)V

    return-object v0
.end method
