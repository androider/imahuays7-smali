.class Lorg/fourthline/cling/support/shared/MainController$1;
.super Ljava/lang/Thread;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/MainController;-><init>(Ljavax/swing/JFrame;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/MainController;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/MainController;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/MainController$1;->this$0:Lorg/fourthline/cling/support/shared/MainController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/MainController$1;->this$0:Lorg/fourthline/cling/support/shared/MainController;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/MainController;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/MainController$1;->this$0:Lorg/fourthline/cling/support/shared/MainController;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/MainController;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->shutdown()V

    :cond_0
    return-void
.end method
