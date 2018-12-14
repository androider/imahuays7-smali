.class Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$6;
.super Ljava/lang/Object;
.source "LogViewImpl.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->initializeToolBar(Lorg/seamless/swing/logging/LogController$Expiration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$6;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 247
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$6;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->getSelectedMessages()Ljava/util/List;

    move-result-object p1

    .line 248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$6;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->presenter:Lorg/fourthline/cling/support/shared/log/LogView$Presenter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/seamless/swing/logging/LogMessage;

    invoke-interface {v0, p1}, Lorg/fourthline/cling/support/shared/log/LogView$Presenter;->onExpand(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method
