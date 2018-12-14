.class public interface abstract Lcom/umeng/message/util/HttpRequest$a;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/util/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/umeng/message/util/HttpRequest$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 377
    new-instance v0, Lcom/umeng/message/util/HttpRequest$a$1;

    invoke-direct {v0}, Lcom/umeng/message/util/HttpRequest$a$1;-><init>()V

    sput-object v0, Lcom/umeng/message/util/HttpRequest$a;->a:Lcom/umeng/message/util/HttpRequest$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
