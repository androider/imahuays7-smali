.class public Lorg/apache/httpcore/a/b;
.super Ljava/lang/Object;
.source "MessageConstraints.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/httpcore/a/b$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/httpcore/a/b;


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/apache/httpcore/a/b$a;

    invoke-direct {v0}, Lorg/apache/httpcore/a/b$a;-><init>()V

    invoke-virtual {v0}, Lorg/apache/httpcore/a/b$a;->a()Lorg/apache/httpcore/a/b;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/a/b;->a:Lorg/apache/httpcore/a/b;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/apache/httpcore/a/b;->b:I

    .line 52
    iput p2, p0, Lorg/apache/httpcore/a/b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/apache/httpcore/a/b;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/httpcore/a/b;->c:I

    return v0
.end method

.method protected c()Lorg/apache/httpcore/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 65
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/httpcore/a/b;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/apache/httpcore/a/b;->c()Lorg/apache/httpcore/a/b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[maxLineLength="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeaderCount="

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/httpcore/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
