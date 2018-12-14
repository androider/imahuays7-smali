.class public Lorg/apache/thrift/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/apache/thrift/protocol/e;

.field private final b:Lorg/apache/thrift/transport/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/thrift/c;-><init>(Lorg/apache/thrift/protocol/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/thrift/transport/b;

    invoke-direct {v0}, Lorg/apache/thrift/transport/b;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/c;->b:Lorg/apache/thrift/transport/b;

    iget-object v0, p0, Lorg/apache/thrift/c;->b:Lorg/apache/thrift/transport/b;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/g;->a(Lorg/apache/thrift/transport/c;)Lorg/apache/thrift/protocol/e;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/thrift/c;->a:Lorg/apache/thrift/protocol/e;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/thrift/a;[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/c;->b:Lorg/apache/thrift/transport/b;

    invoke-virtual {v0, p2}, Lorg/apache/thrift/transport/b;->a([B)V

    iget-object p2, p0, Lorg/apache/thrift/c;->a:Lorg/apache/thrift/protocol/e;

    invoke-interface {p1, p2}, Lorg/apache/thrift/a;->a(Lorg/apache/thrift/protocol/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/thrift/c;->a:Lorg/apache/thrift/protocol/e;

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->x()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/thrift/c;->a:Lorg/apache/thrift/protocol/e;

    invoke-virtual {p2}, Lorg/apache/thrift/protocol/e;->x()V

    throw p1
.end method
