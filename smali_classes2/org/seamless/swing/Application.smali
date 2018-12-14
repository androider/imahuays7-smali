.class public Lorg/seamless/swing/Application;
.super Ljava/lang/Object;
.source "Application.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static center(Ljava/awt/Window;)Ljava/awt/Window;
    .locals 4

    .line 88
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 89
    iget v2, v1, Ljava/awt/Dimension;->width:I

    iget v3, v0, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 90
    iget v1, v1, Ljava/awt/Dimension;->height:I

    iget v0, v0, Ljava/awt/Dimension;->height:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 93
    :goto_0
    invoke-virtual {p0, v2, v0}, Ljava/awt/Window;->setLocation(II)V

    return-object p0
.end method

.method public static center(Ljava/awt/Window;Ljava/awt/Window;)Ljava/awt/Window;
    .locals 8

    .line 98
    invoke-virtual {p1}, Ljava/awt/Window;->getX()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 99
    invoke-virtual {p1}, Ljava/awt/Window;->getY()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v6

    div-double/2addr v6, v4

    add-double/2addr v2, v6

    .line 100
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    div-double/2addr v6, v4

    sub-double/2addr v0, v6

    double-to-int p1, v0

    .line 101
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v0

    div-double/2addr v0, v4

    sub-double/2addr v2, v0

    double-to-int v0, v2

    .line 102
    invoke-virtual {p0, p1, v0}, Ljava/awt/Window;->setLocation(II)V

    return-object p0
.end method

.method public static copyToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 126
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/awt/datatransfer/StringSelection;

    invoke-direct {v1, p0}, Ljava/awt/datatransfer/StringSelection;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v1, v1}, Ljava/awt/datatransfer/Clipboard;->setContents(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V

    return-void
.end method

.method public static createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, p1, v0}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object p0

    return-object p0
.end method

.method public static createImageIcon(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljavax/swing/ImageIcon;
    .locals 1

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    new-instance p1, Ljavax/swing/ImageIcon;

    invoke-direct {p1, p0, p2}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object p1

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find image icon on path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decreaseFontSize(Ljavax/swing/JComponent;)V
    .locals 4

    .line 83
    new-instance v0, Ljava/awt/Font;

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Font;->getStyle()I

    move-result v2

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Font;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setFont(Ljava/awt/Font;)V

    return-void
.end method

.method public static increaseFontSize(Ljavax/swing/JComponent;)V
    .locals 4

    .line 79
    new-instance v0, Ljava/awt/Font;

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Font;->getStyle()I

    move-result v2

    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Font;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setFont(Ljava/awt/Font;)V

    return-void
.end method

.method public static maximize(Ljava/awt/Window;)Ljava/awt/Window;
    .locals 3

    .line 107
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 108
    iget v1, v0, Ljava/awt/Dimension;->width:I

    iget v0, v0, Ljava/awt/Dimension;->height:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Ljava/awt/Window;->setBounds(IIII)V

    return-object p0
.end method

.method public static showError(Ljava/awt/Component;Ljava/lang/Throwable;)V
    .locals 5

    .line 38
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 39
    new-instance v1, Ljava/awt/Font;

    const-string v2, "Sans-Serif"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 40
    invoke-virtual {v0, v3}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 41
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 42
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p1, v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 44
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 45
    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x15e

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    const-string v0, "An Error Has Occurred"

    .line 46
    invoke-static {p0, p1, v0, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method public static varargs showInfo(Ljava/awt/Component;[Ljava/lang/String;)V
    .locals 5

    .line 60
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 61
    new-instance v1, Ljava/awt/Font;

    const-string v2, "Sans-Serif"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 62
    invoke-virtual {v0, v3}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 63
    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, p1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->append(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 65
    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x15e

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    const-string v0, "Info"

    const/4 v1, 0x1

    .line 66
    invoke-static {p0, p1, v0, v1}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method public static varargs showWarning(Ljava/awt/Component;[Ljava/lang/String;)V
    .locals 6

    .line 50
    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 51
    new-instance v1, Ljava/awt/Font;

    const-string v2, "Sans-Serif"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 52
    invoke-virtual {v0, v3}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 53
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/swing/JTextArea;->append(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 55
    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x15e

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    const-string v0, "Warning"

    .line 56
    invoke-static {p0, p1, v0, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method
