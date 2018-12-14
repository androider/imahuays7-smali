.class Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$2;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/SelectorManager$ChangeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$2;->this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$2;->this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->access$900(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)V

    return-void
.end method
