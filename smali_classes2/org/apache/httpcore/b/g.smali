.class public Lorg/apache/httpcore/b/g;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Lorg/apache/httpcore/r;


# static fields
.field public static final a:Lorg/apache/httpcore/b/g;


# instance fields
.field protected final b:Lorg/apache/httpcore/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/httpcore/b/g;

    invoke-direct {v0}, Lorg/apache/httpcore/b/g;-><init>()V

    sput-object v0, Lorg/apache/httpcore/b/g;->a:Lorg/apache/httpcore/b/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/httpcore/b/h;->a:Lorg/apache/httpcore/b/h;

    invoke-direct {p0, v0}, Lorg/apache/httpcore/b/g;-><init>(Lorg/apache/httpcore/v;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/v;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Reason phrase catalog"

    .line 64
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/v;

    iput-object p1, p0, Lorg/apache/httpcore/b/g;->b:Lorg/apache/httpcore/v;

    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/httpcore/d/d;)Ljava/util/Locale;
    .locals 0

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/apache/httpcore/ProtocolVersion;ILorg/apache/httpcore/d/d;)Lorg/apache/httpcore/q;
    .locals 2

    const-string v0, "HTTP version"

    .line 82
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, p3}, Lorg/apache/httpcore/b/g;->a(Lorg/apache/httpcore/d/d;)Ljava/util/Locale;

    move-result-object p3

    .line 84
    iget-object v0, p0, Lorg/apache/httpcore/b/g;->b:Lorg/apache/httpcore/v;

    invoke-interface {v0, p2, p3}, Lorg/apache/httpcore/v;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lorg/apache/httpcore/message/BasicStatusLine;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/httpcore/message/BasicStatusLine;-><init>(Lorg/apache/httpcore/ProtocolVersion;ILjava/lang/String;)V

    .line 86
    new-instance p1, Lorg/apache/httpcore/message/g;

    iget-object p2, p0, Lorg/apache/httpcore/b/g;->b:Lorg/apache/httpcore/v;

    invoke-direct {p1, v1, p2, p3}, Lorg/apache/httpcore/message/g;-><init>(Lorg/apache/httpcore/x;Lorg/apache/httpcore/v;Ljava/util/Locale;)V

    return-object p1
.end method
