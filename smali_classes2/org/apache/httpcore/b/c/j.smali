.class public Lorg/apache/httpcore/b/c/j;
.super Ljava/lang/Object;
.source "DefaultHttpResponseWriterFactory.java"

# interfaces
.implements Lorg/apache/httpcore/c/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/httpcore/c/e<",
        "Lorg/apache/httpcore/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/httpcore/b/c/j;


# instance fields
.field private final b:Lorg/apache/httpcore/message/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/apache/httpcore/b/c/j;

    invoke-direct {v0}, Lorg/apache/httpcore/b/c/j;-><init>()V

    sput-object v0, Lorg/apache/httpcore/b/c/j;->a:Lorg/apache/httpcore/b/c/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lorg/apache/httpcore/b/c/j;-><init>(Lorg/apache/httpcore/message/m;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/message/m;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget-object p1, Lorg/apache/httpcore/message/h;->b:Lorg/apache/httpcore/message/h;

    :goto_0
    iput-object p1, p0, Lorg/apache/httpcore/b/c/j;->b:Lorg/apache/httpcore/message/m;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/c/h;)Lorg/apache/httpcore/c/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/httpcore/c/h;",
            ")",
            "Lorg/apache/httpcore/c/d<",
            "Lorg/apache/httpcore/q;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/apache/httpcore/b/c/i;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/j;->b:Lorg/apache/httpcore/message/m;

    invoke-direct {v0, p1, v1}, Lorg/apache/httpcore/b/c/i;-><init>(Lorg/apache/httpcore/c/h;Lorg/apache/httpcore/message/m;)V

    return-object v0
.end method
