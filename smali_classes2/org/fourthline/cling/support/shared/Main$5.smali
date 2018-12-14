.class Lorg/fourthline/cling/support/shared/Main$5;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/Main;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/Main;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/shared/Main;Ljava/lang/Throwable;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iput-object p2, p0, Lorg/fourthline/cling/support/shared/Main$5;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 128
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Container;->removeAll()V

    .line 130
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exceptional error occurred!\nYou can try to continue or exit the application.\n\n"

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Please tell us about this here:\nhttp://www.4thline.org/projects/mailinglists-cling.html\n\n"

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-------------------------------------------------------------------------------------------------------------\n\n"

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 138
    iget-object v4, p0, Lorg/fourthline/cling/support/shared/Main$5;->val$throwable:Ljava/lang/Throwable;

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v4, v5}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljavax/swing/JScrollPane;

    invoke-direct {v2, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 143
    iget-object v3, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object v3, v3, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    invoke-virtual {v3}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    const-string v4, "Center"

    invoke-virtual {v3, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 145
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Exit Application"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v3, Lorg/fourthline/cling/support/shared/Main$5$1;

    invoke-direct {v3, p0}, Lorg/fourthline/cling/support/shared/Main$5$1;-><init>(Lorg/fourthline/cling/support/shared/Main$5;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 153
    iget-object v3, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object v3, v3, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    invoke-virtual {v3}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    const-string v4, "South"

    invoke-virtual {v3, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 155
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object v2, v2, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    invoke-virtual {v2}, Ljavax/swing/JFrame;->pack()V

    .line 156
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object v2, v2, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    invoke-static {v2}, Lorg/seamless/swing/Application;->center(Ljava/awt/Window;)Ljava/awt/Window;

    .line 157
    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setCaretPosition(I)V

    .line 159
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    iget-object v0, v0, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method
