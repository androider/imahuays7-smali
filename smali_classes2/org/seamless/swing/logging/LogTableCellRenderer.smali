.class public abstract Lorg/seamless/swing/logging/LogTableCellRenderer;
.super Ljavax/swing/table/DefaultTableCellRenderer;
.source "LogTableCellRenderer.java"


# instance fields
.field protected dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljavax/swing/table/DefaultTableCellRenderer;-><init>()V

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogTableCellRenderer;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method protected abstract getDebugIcon()Ljavax/swing/ImageIcon;
.end method

.method protected abstract getInfoIcon()Ljavax/swing/ImageIcon;
.end method

.method public getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
    .locals 9

    .line 39
    check-cast p2, Lorg/seamless/swing/logging/LogMessage;

    packed-switch p6, :pswitch_data_0

    .line 78
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\n"

    const-string v1, "<NL>"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\r"

    const-string v1, "<CR>"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-super/range {v2 .. v8}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_0
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getSource()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_1
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getThread()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_2
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getCreatedOn()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 66
    iget-object p2, p0, Lorg/seamless/swing/logging/LogTableCellRenderer;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-super/range {v1 .. v7}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_3
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object p1

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object p1

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object p1

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    new-instance p1, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;->getDebugIcon()Ljavax/swing/ImageIcon;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    return-object p1

    .line 52
    :cond_1
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object p1

    sget-object p3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    new-instance p1, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;->getInfoIcon()Ljavax/swing/ImageIcon;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    return-object p1

    .line 55
    :cond_3
    :goto_0
    new-instance p1, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;->getTraceIcon()Ljavax/swing/ImageIcon;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    return-object p1

    .line 46
    :cond_4
    :goto_1
    new-instance p1, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;->getWarnErrorIcon()Ljavax/swing/ImageIcon;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getTraceIcon()Ljavax/swing/ImageIcon;
.end method

.method protected abstract getWarnErrorIcon()Ljavax/swing/ImageIcon;
.end method
