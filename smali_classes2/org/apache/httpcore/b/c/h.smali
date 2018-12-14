.class public Lorg/apache/httpcore/b/c/h;
.super Ljava/lang/Object;
.source "DefaultHttpRequestParserFactory.java"

# interfaces
.implements Lorg/apache/httpcore/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/httpcore/c/c<",
        "Lorg/apache/httpcore/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/httpcore/b/c/h;


# instance fields
.field private final b:Lorg/apache/httpcore/message/n;

.field private final c:Lorg/apache/httpcore/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/apache/httpcore/b/c/h;

    invoke-direct {v0}, Lorg/apache/httpcore/b/c/h;-><init>()V

    sput-object v0, Lorg/apache/httpcore/b/c/h;->a:Lorg/apache/httpcore/b/c/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, v0}, Lorg/apache/httpcore/b/c/h;-><init>(Lorg/apache/httpcore/message/n;Lorg/apache/httpcore/o;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/message/n;Lorg/apache/httpcore/o;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Lorg/apache/httpcore/message/i;->b:Lorg/apache/httpcore/message/i;

    :goto_0
    iput-object p1, p0, Lorg/apache/httpcore/b/c/h;->b:Lorg/apache/httpcore/message/n;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    sget-object p2, Lorg/apache/httpcore/b/f;->a:Lorg/apache/httpcore/b/f;

    :goto_1
    iput-object p2, p0, Lorg/apache/httpcore/b/c/h;->c:Lorg/apache/httpcore/o;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/c/g;Lorg/apache/httpcore/a/b;)Lorg/apache/httpcore/c/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/httpcore/c/g;",
            "Lorg/apache/httpcore/a/b;",
            ")",
            "Lorg/apache/httpcore/c/b<",
            "Lorg/apache/httpcore/n;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/httpcore/b/c/g;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/h;->b:Lorg/apache/httpcore/message/n;

    iget-object v2, p0, Lorg/apache/httpcore/b/c/h;->c:Lorg/apache/httpcore/o;

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/apache/httpcore/b/c/g;-><init>(Lorg/apache/httpcore/c/g;Lorg/apache/httpcore/message/n;Lorg/apache/httpcore/o;Lorg/apache/httpcore/a/b;)V

    return-object v0
.end method
