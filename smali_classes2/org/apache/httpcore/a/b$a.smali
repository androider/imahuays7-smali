.class public Lorg/apache/httpcore/a/b$a;
.super Ljava/lang/Object;
.source "MessageConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/httpcore/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lorg/apache/httpcore/a/b$a;->a:I

    .line 99
    iput v0, p0, Lorg/apache/httpcore/a/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/httpcore/a/b;
    .locals 3

    .line 113
    new-instance v0, Lorg/apache/httpcore/a/b;

    iget v1, p0, Lorg/apache/httpcore/a/b$a;->a:I

    iget v2, p0, Lorg/apache/httpcore/a/b$a;->b:I

    invoke-direct {v0, v1, v2}, Lorg/apache/httpcore/a/b;-><init>(II)V

    return-object v0
.end method
