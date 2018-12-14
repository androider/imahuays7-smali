.class Lorg/fourthline/cling/UpnpServiceImpl$1;
.super Ljava/lang/Object;
.source "UpnpServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/UpnpServiceImpl;->shutdown(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/UpnpServiceImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/UpnpServiceImpl;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/fourthline/cling/UpnpServiceImpl$1;->this$0:Lorg/fourthline/cling/UpnpServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 141
    invoke-static {}, Lorg/fourthline/cling/UpnpServiceImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">>> Shutting down UPnP service..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl$1;->this$0:Lorg/fourthline/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdownRegistry()V

    .line 143
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl$1;->this$0:Lorg/fourthline/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdownRouter()V

    .line 144
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl$1;->this$0:Lorg/fourthline/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdownConfiguration()V

    .line 145
    invoke-static {}, Lorg/fourthline/cling/UpnpServiceImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "<<< UPnP service shutdown completed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
