.class Lorg/eclipse/jetty/server/Request$1;
.super Ljava/io/BufferedReader;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/Request;->getReader()Ljava/io/BufferedReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/Request;

.field final synthetic val$in:Ljavax/servlet/ServletInputStream;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/Request;Ljava/io/Reader;Ljavax/servlet/ServletInputStream;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request$1;->this$0:Lorg/eclipse/jetty/server/Request;

    iput-object p3, p0, Lorg/eclipse/jetty/server/Request$1;->val$in:Ljavax/servlet/ServletInputStream;

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request$1;->val$in:Ljavax/servlet/ServletInputStream;

    invoke-virtual {v0}, Ljavax/servlet/ServletInputStream;->close()V

    return-void
.end method
