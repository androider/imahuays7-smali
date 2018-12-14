.class Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;
.super Ljava/lang/Object;
.source "ContentBrowseActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

.field final synthetic val$defaultMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iput-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;->val$defaultMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;->this$0:Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;->val$defaultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->failureUI(Ljava/lang/String;)V

    return-void
.end method
