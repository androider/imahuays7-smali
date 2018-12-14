.class public Lorg/apache/httpcore/message/e;
.super Lorg/apache/httpcore/message/f;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lorg/apache/httpcore/k;


# instance fields
.field private c:Lorg/apache/httpcore/j;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/w;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/httpcore/message/f;-><init>(Lorg/apache/httpcore/w;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/j;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/apache/httpcore/message/e;->c:Lorg/apache/httpcore/j;

    return-void
.end method

.method public a()Z
    .locals 2

    const-string v0, "Expect"

    .line 72
    invoke-virtual {p0, v0}, Lorg/apache/httpcore/message/e;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    .line 73
    invoke-interface {v0}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lorg/apache/httpcore/j;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/httpcore/message/e;->c:Lorg/apache/httpcore/j;

    return-object v0
.end method
