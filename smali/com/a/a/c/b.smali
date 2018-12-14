.class public Lcom/a/a/c/b;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/a/a/c/b;->a:Ljava/lang/String;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/a/a/c/b;->b:Ljava/lang/String;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/a/a/c/b;->c:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/a/a/c/b;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/a/a/c/b;->e:J

    .line 16
    iput-wide v0, p0, Lcom/a/a/c/b;->f:J

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/a/a/c/b;->e:J

    return-wide v0
.end method

.method a(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/a/a/c/b;->f:J

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/a/a/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/a/a/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method b(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/a/a/c/b;->e:J

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/a/a/c/b;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/a/a/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/a/a/c/b;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/a/a/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/a/a/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/a/a/c/b;->d:Ljava/lang/String;

    return-object v0
.end method
