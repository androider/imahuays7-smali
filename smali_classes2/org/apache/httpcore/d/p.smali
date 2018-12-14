.class public Lorg/apache/httpcore/d/p;
.super Ljava/lang/Object;
.source "ResponseDate.java"

# interfaces
.implements Lorg/apache/httpcore/s;


# static fields
.field private static final a:Lorg/apache/httpcore/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/httpcore/d/f;

    invoke-direct {v0}, Lorg/apache/httpcore/d/f;-><init>()V

    sput-object v0, Lorg/apache/httpcore/d/p;->a:Lorg/apache/httpcore/d/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "HTTP response"

    .line 59
    invoke-static {p1, p2}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-interface {p1}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/httpcore/x;->getStatusCode()I

    move-result p2

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_0

    const-string p2, "Date"

    .line 62
    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 63
    sget-object p2, Lorg/apache/httpcore/d/p;->a:Lorg/apache/httpcore/d/f;

    invoke-virtual {p2}, Lorg/apache/httpcore/d/f;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Date"

    .line 64
    invoke-interface {p1, v0, p2}, Lorg/apache/httpcore/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
