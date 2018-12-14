.class public Lorg/apache/httpcore/a/c;
.super Ljava/lang/Object;
.source "SocketConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/httpcore/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/httpcore/a/c;


# instance fields
.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/httpcore/a/c$a;

    invoke-direct {v0}, Lorg/apache/httpcore/a/c$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/httpcore/a/c$a;->a()Lorg/apache/httpcore/a/c;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/a/c;->a:Lorg/apache/httpcore/a/c;

    return-void
.end method

.method constructor <init>(IZIZZIII)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lorg/apache/httpcore/a/c;->b:I

    .line 64
    iput-boolean p2, p0, Lorg/apache/httpcore/a/c;->c:Z

    .line 65
    iput p3, p0, Lorg/apache/httpcore/a/c;->d:I

    .line 66
    iput-boolean p4, p0, Lorg/apache/httpcore/a/c;->e:Z

    .line 67
    iput-boolean p5, p0, Lorg/apache/httpcore/a/c;->f:Z

    .line 68
    iput p6, p0, Lorg/apache/httpcore/a/c;->g:I

    .line 69
    iput p7, p0, Lorg/apache/httpcore/a/c;->h:I

    .line 70
    iput p8, p0, Lorg/apache/httpcore/a/c;->i:I

    return-void
.end method

.method public static j()Lorg/apache/httpcore/a/c$a;
    .locals 1

    .line 206
    new-instance v0, Lorg/apache/httpcore/a/c$a;

    invoke-direct {v0}, Lorg/apache/httpcore/a/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/apache/httpcore/a/c;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/apache/httpcore/a/c;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/apache/httpcore/a/c;->d:I

    return v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/apache/httpcore/a/c;->i()Lorg/apache/httpcore/a/c;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/apache/httpcore/a/c;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/apache/httpcore/a/c;->f:Z

    return v0
.end method

.method public f()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/apache/httpcore/a/c;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 169
    iget v0, p0, Lorg/apache/httpcore/a/c;->h:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 182
    iget v0, p0, Lorg/apache/httpcore/a/c;->i:I

    return v0
.end method

.method protected i()Lorg/apache/httpcore/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 187
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/httpcore/a/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[soTimeout="

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soReuseAddress="

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/httpcore/a/c;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", soLinger="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soKeepAlive="

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/httpcore/a/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tcpNoDelay="

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/httpcore/a/c;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sndBufSize="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcvBufSize="

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backlogSize="

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
