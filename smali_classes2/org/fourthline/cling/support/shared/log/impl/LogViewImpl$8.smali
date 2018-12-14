.class Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$8;
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

    .line 267
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$8;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 269
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/JComboBox;

    .line 270
    invoke-virtual {p1}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 271
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl$8;->this$0:Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/log/impl/LogViewImpl;->logTableModel:Lorg/seamless/swing/logging/LogTableModel;

    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogController$Expiration;->getSeconds()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/seamless/swing/logging/LogTableModel;->setMaxAgeSeconds(I)V

    return-void
.end method
