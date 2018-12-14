.class Lorg/fourthline/cling/support/shared/Main$3;
.super Ljava/lang/Thread;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/Main;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/Main;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/Main;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/Main$3;->this$0:Lorg/fourthline/cling/support/shared/Main;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main$3;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-boolean v0, v0, Lorg/fourthline/cling/support/shared/Main;->isRegularShutdown:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main$3;->this$0:Lorg/fourthline/cling/support/shared/Main;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/Main;->shutdown()V

    :cond_0
    return-void
.end method
