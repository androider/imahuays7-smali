.class public abstract Lorg/apache/httpcore/message/a;
.super Ljava/lang/Object;
.source "AbstractHttpMessage.java"

# interfaces
.implements Lorg/apache/httpcore/m;


# instance fields
.field protected a:Lorg/apache/httpcore/message/HeaderGroup;

.field protected b:Lorg/apache/httpcore/params/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lorg/apache/httpcore/message/a;-><init>(Lorg/apache/httpcore/params/b;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/httpcore/params/b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/httpcore/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/httpcore/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    .line 57
    iput-object p1, p0, Lorg/apache/httpcore/message/a;->b:Lorg/apache/httpcore/params/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Header name"

    .line 103
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    new-instance v1, Lorg/apache/httpcore/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/httpcore/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/httpcore/message/HeaderGroup;->addHeader(Lorg/apache/httpcore/e;)V

    return-void
.end method

.method public a(Lorg/apache/httpcore/e;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/message/HeaderGroup;->addHeader(Lorg/apache/httpcore/e;)V

    return-void
.end method

.method public a([Lorg/apache/httpcore/e;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/message/HeaderGroup;->setHeaders([Lorg/apache/httpcore/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/message/HeaderGroup;->containsHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Header name"

    .line 116
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    new-instance v1, Lorg/apache/httpcore/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/httpcore/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/httpcore/message/HeaderGroup;->updateHeader(Lorg/apache/httpcore/e;)V

    return-void
.end method

.method public b(Ljava/lang/String;)[Lorg/apache/httpcore/e;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/httpcore/e;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lorg/apache/httpcore/e;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object p1

    return-object p1
.end method

.method public d()Lorg/apache/httpcore/g;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/httpcore/message/HeaderGroup;->iterator()Lorg/apache/httpcore/g;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0}, Lorg/apache/httpcore/message/HeaderGroup;->iterator()Lorg/apache/httpcore/g;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/apache/httpcore/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-interface {v0}, Lorg/apache/httpcore/g;->a()Lorg/apache/httpcore/e;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Lorg/apache/httpcore/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-interface {v0}, Lorg/apache/httpcore/g;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/String;)Lorg/apache/httpcore/g;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/httpcore/message/a;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lorg/apache/httpcore/message/HeaderGroup;->iterator(Ljava/lang/String;)Lorg/apache/httpcore/g;

    move-result-object p1

    return-object p1
.end method
