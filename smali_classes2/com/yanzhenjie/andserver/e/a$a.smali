.class public final Lcom/yanzhenjie/andserver/e/a$a;
.super Ljava/lang/Object;
.source "SSLSocketInitializer.java"

# interfaces
.implements Lorg/apache/httpcore/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/andserver/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yanzhenjie/andserver/e/a;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/andserver/e/a;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yanzhenjie/andserver/e/a$a;->a:Lcom/yanzhenjie/andserver/e/a;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLServerSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/yanzhenjie/andserver/e/a$a;->a:Lcom/yanzhenjie/andserver/e/a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/yanzhenjie/andserver/e/a$a;->a:Lcom/yanzhenjie/andserver/e/a;

    invoke-interface {v0, p1}, Lcom/yanzhenjie/andserver/e/a;->a(Ljavax/net/ssl/SSLServerSocket;)V

    :cond_0
    return-void
.end method
