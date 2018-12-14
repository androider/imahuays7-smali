.class Lorg/eclipse/jetty/io/bio/StringEndPoint$1;
.super Ljava/lang/IllegalStateException;
.source "StringEndPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/bio/StringEndPoint;->getOutput()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/bio/StringEndPoint;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/bio/StringEndPoint;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;->this$0:Lorg/eclipse/jetty/io/bio/StringEndPoint;

    iput-object p3, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
