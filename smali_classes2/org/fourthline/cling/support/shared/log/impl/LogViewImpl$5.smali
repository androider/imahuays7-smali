.class Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$5;
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

    .line 232
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$5;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$5;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->getSelectedMessages()Ljava/util/List;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/seamless/swing/logging/LogMessage;

    .line 237
    invoke-virtual {v1}, Lorg/seamless/swing/logging/LogMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/seamless/swing/Application;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method
