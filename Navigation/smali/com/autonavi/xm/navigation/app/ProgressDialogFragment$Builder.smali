.class public final Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;
.super Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/app/AlertDialogFragment$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/autonavi/xm/navigation/app/AlertDialogFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;->create()Lcom/autonavi/xm/navigation/app/ProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/autonavi/xm/navigation/app/ProgressDialogFragment;
    .locals 1

    new-instance v0, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/app/ProgressDialogFragment$Builder;->apply(Lcom/autonavi/xm/navigation/app/AlertDialogFragment;)V

    return-object v0
.end method
