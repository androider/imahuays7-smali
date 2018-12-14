.class public Lorg/apache/httpcore/a/c$a;
.super Ljava/lang/Object;
.source "SocketConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/httpcore/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 234
    iput v0, p0, Lorg/apache/httpcore/a/c$a;->c:I

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lorg/apache/httpcore/a/c$a;->e:Z

    return-void
.end method


# virtual methods
.method public a(I)Lorg/apache/httpcore/a/c$a;
    .locals 0

    .line 239
    iput p1, p0, Lorg/apache/httpcore/a/c$a;->a:I

    return-object p0
.end method

.method public a(Z)Lorg/apache/httpcore/a/c$a;
    .locals 0

    .line 244
    iput-boolean p1, p0, Lorg/apache/httpcore/a/c$a;->b:Z

    return-object p0
.end method

.method public a()Lorg/apache/httpcore/a/c;
    .locals 10

    .line 288
    new-instance v9, Lorg/apache/httpcore/a/c;

    iget v1, p0, Lorg/apache/httpcore/a/c$a;->a:I

    iget-boolean v2, p0, Lorg/apache/httpcore/a/c$a;->b:Z

    iget v3, p0, Lorg/apache/httpcore/a/c$a;->c:I

    iget-boolean v4, p0, Lorg/apache/httpcore/a/c$a;->d:Z

    iget-boolean v5, p0, Lorg/apache/httpcore/a/c$a;->e:Z

    iget v6, p0, Lorg/apache/httpcore/a/c$a;->f:I

    iget v7, p0, Lorg/apache/httpcore/a/c$a;->g:I

    iget v8, p0, Lorg/apache/httpcore/a/c$a;->h:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/httpcore/a/c;-><init>(IZIZZIII)V

    return-object v9
.end method

.method public b(Z)Lorg/apache/httpcore/a/c$a;
    .locals 0

    .line 254
    iput-boolean p1, p0, Lorg/apache/httpcore/a/c$a;->d:Z

    return-object p0
.end method

.method public c(Z)Lorg/apache/httpcore/a/c$a;
    .locals 0

    .line 259
    iput-boolean p1, p0, Lorg/apache/httpcore/a/c$a;->e:Z

    return-object p0
.end method
