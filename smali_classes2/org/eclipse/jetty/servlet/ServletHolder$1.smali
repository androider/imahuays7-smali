.class Lorg/eclipse/jetty/servlet/ServletHolder$1;
.super Ljavax/servlet/UnavailableException;
.source "ServletHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$1;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iput-object p4, p0, Lorg/eclipse/jetty/servlet/ServletHolder$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0, p2, p3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    .line 501
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$1;->val$e:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder$1;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
