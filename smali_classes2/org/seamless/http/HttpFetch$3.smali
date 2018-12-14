.class final Lorg/seamless/http/HttpFetch$3;
.super Ljava/lang/Object;
.source "HttpFetch.java"

# interfaces
.implements Lorg/seamless/http/HttpFetch$RepresentationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/http/HttpFetch;->validate(Ljava/net/URL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/seamless/http/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance p2, Lorg/seamless/http/Representation;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/seamless/http/Representation;-><init>(Ljava/net/URLConnection;Ljava/lang/Object;)V

    return-object p2
.end method
