.class Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$7;
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

    .line 254
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$7;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 256
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$7;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object p1, p1, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->logTableModel:Lorg/seamless/swing/logging/LogTableModel;

    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$7;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->logTableModel:Lorg/seamless/swing/logging/LogTableModel;

    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogTableModel;->isPaused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogTableModel;->setPaused(Z)V

    .line 257
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$7;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object p1, p1, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->logTableModel:Lorg/seamless/swing/logging/LogTableModel;

    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogTableModel;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$7;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object p1, p1, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->pauseLabel:Ljavax/swing/JLabel;

    const-string v0, " (Paused)"

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$7;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object p1, p1, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->pauseLabel:Ljavax/swing/JLabel;

    const-string v0, " (Active)"

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
