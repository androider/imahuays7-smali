.class public Lorg/apache/httpcore/b/d;
.super Ljava/lang/Object;
.source "DefaultBHttpServerConnectionFactory.java"

# interfaces
.implements Lorg/apache/httpcore/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/httpcore/i<",
        "Lorg/apache/httpcore/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/httpcore/b/d;


# instance fields
.field private final b:Lorg/apache/httpcore/a/a;

.field private final c:Lorg/apache/httpcore/entity/d;

.field private final d:Lorg/apache/httpcore/entity/d;

.field private final e:Lorg/apache/httpcore/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/c/c<",
            "Lorg/apache/httpcore/n;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lorg/apache/httpcore/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/httpcore/c/e<",
            "Lorg/apache/httpcore/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/httpcore/b/d;

    invoke-direct {v0}, Lorg/apache/httpcore/b/d;-><init>()V

    sput-object v0, Lorg/apache/httpcore/b/d;->a:Lorg/apache/httpcore/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 87
    invoke-direct/range {v0 .. v5}, Lorg/apache/httpcore/b/d;-><init>(Lorg/apache/httpcore/a/a;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/c/c;Lorg/apache/httpcore/c/e;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/a/a;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 83
    invoke-direct/range {v0 .. v5}, Lorg/apache/httpcore/b/d;-><init>(Lorg/apache/httpcore/a/a;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/c/c;Lorg/apache/httpcore/c/e;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/a/a;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/c/c;Lorg/apache/httpcore/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/httpcore/a/a;",
            "Lorg/apache/httpcore/entity/d;",
            "Lorg/apache/httpcore/entity/d;",
            "Lorg/apache/httpcore/c/c<",
            "Lorg/apache/httpcore/n;",
            ">;",
            "Lorg/apache/httpcore/c/e<",
            "Lorg/apache/httpcore/q;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    sget-object p1, Lorg/apache/httpcore/a/a;->a:Lorg/apache/httpcore/a/a;

    :goto_0
    iput-object p1, p0, Lorg/apache/httpcore/b/d;->b:Lorg/apache/httpcore/a/a;

    .line 69
    iput-object p2, p0, Lorg/apache/httpcore/b/d;->c:Lorg/apache/httpcore/entity/d;

    .line 70
    iput-object p3, p0, Lorg/apache/httpcore/b/d;->d:Lorg/apache/httpcore/entity/d;

    .line 71
    iput-object p4, p0, Lorg/apache/httpcore/b/d;->e:Lorg/apache/httpcore/c/c;

    .line 72
    iput-object p5, p0, Lorg/apache/httpcore/b/d;->f:Lorg/apache/httpcore/c/e;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/net/Socket;)Lorg/apache/httpcore/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/b/d;->b(Ljava/net/Socket;)Lorg/apache/httpcore/b/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/net/Socket;)Lorg/apache/httpcore/b/c;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v10, Lorg/apache/httpcore/b/c;

    iget-object v0, p0, Lorg/apache/httpcore/b/d;->b:Lorg/apache/httpcore/a/a;

    .line 93
    invoke-virtual {v0}, Lorg/apache/httpcore/a/a;->a()I

    move-result v1

    iget-object v0, p0, Lorg/apache/httpcore/b/d;->b:Lorg/apache/httpcore/a/a;

    .line 94
    invoke-virtual {v0}, Lorg/apache/httpcore/a/a;->b()I

    move-result v2

    iget-object v0, p0, Lorg/apache/httpcore/b/d;->b:Lorg/apache/httpcore/a/a;

    .line 95
    invoke-static {v0}, Lorg/apache/httpcore/b/b;->a(Lorg/apache/httpcore/a/a;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/httpcore/b/d;->b:Lorg/apache/httpcore/a/a;

    .line 96
    invoke-static {v0}, Lorg/apache/httpcore/b/b;->b(Lorg/apache/httpcore/a/a;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/httpcore/b/d;->b:Lorg/apache/httpcore/a/a;

    .line 97
    invoke-virtual {v0}, Lorg/apache/httpcore/a/a;->f()Lorg/apache/httpcore/a/b;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/httpcore/b/d;->c:Lorg/apache/httpcore/entity/d;

    iget-object v7, p0, Lorg/apache/httpcore/b/d;->d:Lorg/apache/httpcore/entity/d;

    iget-object v8, p0, Lorg/apache/httpcore/b/d;->e:Lorg/apache/httpcore/c/c;

    iget-object v9, p0, Lorg/apache/httpcore/b/d;->f:Lorg/apache/httpcore/c/e;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/httpcore/b/c;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/httpcore/a/b;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/entity/d;Lorg/apache/httpcore/c/c;Lorg/apache/httpcore/c/e;)V

    .line 102
    invoke-virtual {v10, p1}, Lorg/apache/httpcore/b/c;->c(Ljava/net/Socket;)V

    return-object v10
.end method
