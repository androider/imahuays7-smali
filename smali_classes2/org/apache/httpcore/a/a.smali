.class public Lorg/apache/httpcore/a/a;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/httpcore/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/httpcore/a/a;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/nio/charset/Charset;

.field private final e:Ljava/nio/charset/CodingErrorAction;

.field private final f:Ljava/nio/charset/CodingErrorAction;

.field private final g:Lorg/apache/httpcore/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lorg/apache/httpcore/a/a$a;

    invoke-direct {v0}, Lorg/apache/httpcore/a/a$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/httpcore/a/a$a;->a()Lorg/apache/httpcore/a/a;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/a/a;->a:Lorg/apache/httpcore/a/a;

    return-void
.end method

.method constructor <init>(IILjava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;Lorg/apache/httpcore/a/b;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lorg/apache/httpcore/a/a;->b:I

    .line 64
    iput p2, p0, Lorg/apache/httpcore/a/a;->c:I

    .line 65
    iput-object p3, p0, Lorg/apache/httpcore/a/a;->d:Ljava/nio/charset/Charset;

    .line 66
    iput-object p4, p0, Lorg/apache/httpcore/a/a;->e:Ljava/nio/charset/CodingErrorAction;

    .line 67
    iput-object p5, p0, Lorg/apache/httpcore/a/a;->f:Ljava/nio/charset/CodingErrorAction;

    .line 68
    iput-object p6, p0, Lorg/apache/httpcore/a/a;->g:Lorg/apache/httpcore/a/b;

    return-void
.end method

.method public static h()Lorg/apache/httpcore/a/a$a;
    .locals 1

    .line 114
    new-instance v0, Lorg/apache/httpcore/a/a$a;

    invoke-direct {v0}, Lorg/apache/httpcore/a/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/apache/httpcore/a/a;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/apache/httpcore/a/a;->c:I

    return v0
.end method

.method public c()Ljava/nio/charset/Charset;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/httpcore/a/a;->d:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/apache/httpcore/a/a;->g()Lorg/apache/httpcore/a/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/httpcore/a/a;->e:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public e()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/httpcore/a/a;->f:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public f()Lorg/apache/httpcore/a/b;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/httpcore/a/a;->g:Lorg/apache/httpcore/a/b;

    return-object v0
.end method

.method protected g()Lorg/apache/httpcore/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 97
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/httpcore/a/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[bufferSize="

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fragmentSizeHint="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", charset="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/httpcore/a/a;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", malformedInputAction="

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/httpcore/a/a;->e:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unmappableInputAction="

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/httpcore/a/a;->f:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageConstraints="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/httpcore/a/a;->g:Lorg/apache/httpcore/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
