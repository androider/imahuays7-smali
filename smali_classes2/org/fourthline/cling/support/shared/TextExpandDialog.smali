.class public Lorg/fourthline/cling/support/shared/TextExpandDialog;
.super Ljavax/swing/JDialog;
.source "TextExpandDialog.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/fourthline/cling/support/shared/TextExpandDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/shared/TextExpandDialog;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Ljava/lang/String;)V
    .locals 6

    .line 41
    invoke-direct {p0, p1}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/shared/TextExpandDialog;->setResizable(Z)V

    .line 44
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 45
    new-instance v1, Ljavax/swing/JScrollPane;

    invoke-direct {v1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 46
    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x1f4

    const/16 v4, 0x190

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 47
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/shared/TextExpandDialog;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const-string v1, "<"

    .line 50
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, ">"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/support/shared/TextExpandDialog$1;

    invoke-direct {v1, p0}, Lorg/fourthline/cling/support/shared/TextExpandDialog$1;-><init>(Lorg/fourthline/cling/support/shared/TextExpandDialog;)V

    const/4 v3, 0x2

    .line 57
    invoke-virtual {v1, p2, v3, v2}, Lorg/fourthline/cling/support/shared/TextExpandDialog$1;->print(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 59
    sget-object v3, Lorg/fourthline/cling/support/shared/TextExpandDialog;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error pretty printing XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "http-get"

    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {p2}, Lorg/fourthline/cling/model/ModelUtil;->commaToNewline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 69
    invoke-virtual {v0, p2}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/support/shared/TextExpandDialog;->pack()V

    .line 72
    invoke-virtual {p0}, Lorg/fourthline/cling/support/shared/TextExpandDialog;->getOwner()Ljava/awt/Window;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/seamless/swing/Application;->center(Ljava/awt/Window;Ljava/awt/Window;)Ljava/awt/Window;

    .line 73
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/shared/TextExpandDialog;->setVisible(Z)V

    return-void
.end method
