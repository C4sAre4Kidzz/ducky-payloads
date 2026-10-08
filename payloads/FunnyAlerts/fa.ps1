function Invoke-ToolTip {
    param (
        $message
    )
    Add-Type -AssemblyName System.Windows.Forms
    $balloon = New-Object System.Windows.Forms.NotifyIcon
    $balloon.icon = [System.Drawing.SystemIcons]::Information
    $balloon.visible = $true
    $balloon.showballoontip(10000, '', $message, [System.Windows.Forms.ToolTipIcon]::Info)
    $balloon.Dispose()
}

# Replace messages below if you'd like
$messages = @(
   "You have been selected to receive 3 invisible potatoes!",
"BREAKING NEWS: Your mouse has unionized.",
"Windows has detected that you are being too productive.",
"Your computer would like a snack.",
"Congratulations! You have unlocked absolutely nothing!",
"ERROR: Brain.exe has stopped responding.",
"Your keyboard has requested a 15-minute break.",
"WARNING: Your PC is 73% suspicious.",
"Microsoft has determined that you are, in fact, using a computer.",
"Congratulations! You won the Internet. Please pick it up at the front desk.",
"Your computer has been diagnosed with the sillies.",
"ALERT: A pigeon is currently reviewing your computer.",
"Your CPU would like to speak with your manager.",
"WARNING: Too much gaming detected. Touch grass immediately.",
"System update complete. Added 0 features.",
"Your computer has calculated your odds of becoming famous: 0.0003%.",
"ERROR 404: Productivity not found.",
"Congratulations! You have been promoted to Professional Button Clicker.",
"Your PC has achieved sentience. It is disappointed.",
"Windows has detected an excessive amount of silliness.",
"URGENT: Your chair is running low on RAM.",
"Your mouse has wandered off. Please remain calm.",
"NOTICE: Your computer knows what you did last Tuesday.",
"Congratulations! You have unlocked the legendary Nothing.",
"WARNING: Your Wi-Fi is being held together by hopes and dreams.",
"Your PC has requested that you stop opening 47 Chrome tabs.",
"Achievement unlocked: You successfully turned on your computer.",
"ALERT: The vibes are critically low.",
"Your computer has decided to become a toaster.",
"ERROR: Common sense.dll could not be found.",
"Congratulations! You are today's randomly selected victim of this popup.",
"Your computer is currently thinking about life.",
"WARNING: Your GPU has filed a complaint about your Minecraft settings.",
"System message: bro what are you doing",
"Your PC has detected suspicious levels of goofiness."
)

while (1) {
    $randomMessage = Get-Random -InputObject $messages
    Invoke-ToolTip -message $randomMessage
    Sleep -Seconds 900
}
